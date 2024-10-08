<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Filament\Resources\UserResource\RelationManagers;
use App\Models\Role;
use App\Models\User;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\Relationship;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Facades\Hash;


class UserResource extends Resource
{

    protected static ?string $model = User::class;
    protected static ?string $navigationIcon = 'heroicon-o-users'; // incluindo icone no painel lateral
    protected static ?string $modelLabel = 'Usuário'; //incluindo nome no painel lateral
    protected static ?string $navigationGroup = 'Configurações'; // incluindo a um grupo no menu lateral
    protected static ?int $navigationSort =12;
    protected static ?string $tenantOwnershipRelationshipName = 'team'; //Isso configura o multitenant por usuarios de equipe

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->label('Nome Completo')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('email')
                    ->label('E-mail')
                    ->email()
                    ->required()
                    ->unique(ignoreRecord:true)
                    ->maxLength(255),
               // Forms\Components\DateTimePicker::make('email_verified_at')
               //   ->label('Data Verificação'),

                Forms\Components\TextInput::make('password')
                    ->label('Senha')
                    ->password()
                    ->dehydrateStateUsing(fn (string $state): string => Hash::make($state))
                    ->dehydrated(fn (?string $state): bool => filled($state))
                    ->required(fn (string $operation): bool => $operation === 'create'),
                Forms\Components\Select::make('roles')
                    ->label('Função')
                    ->multiple()
                    ->relationship('roles', 'name', fn(Builder $query) => auth()->user()->hasRole('Admin2') ? null : $query->where('name', '<>', 'Admin2'))
                    ->preload(),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->label('Nome Completo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('email')
                    ->label('E-mail')
                    ->searchable(),
                Tables\Columns\TextColumn::make('email_verified_at')
                    ->label('Data Verificação')
                    ->dateTime()
                    ->sortable(date('d/m/y - H:i:s'))
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Data Criação')
                    ->dateTime(date('d/m/y - H:i:s'))
                    ->sortable(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->label('Data Atualização')
                    ->dateTime(date('d/m/y - H:i:s'))
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);

    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }




    public static function getPages(): array
    {
        return [
            'index' => Pages\ListUsers::route('/'),
            'create' => Pages\CreateUser::route('/create'),
            'edit' => Pages\EditUser::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
{
    return auth()->user()->hasRole('Admin2') ? parent::getEloquentQuery() : parent::getEloquentQuery()->whereHas('roles', fn(Builder $query) => $query->where('name', '<>', 'Admin2'));
}


}
