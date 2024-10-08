<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RoleResource\Pages;
use App\Filament\Resources\RoleResource\RelationManagers;
use App\Models\Role;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RoleResource extends Resource
{
    
    protected static ?string $model = Role::class;
    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $modelLabel = 'Funções';
    protected static ?string $pluralModelLabel = 'Funções';
    protected static ?string $navigationGroup = 'Configurações';
    protected static ?int $navigationSort =11;
    protected static ?string $tenantOwnershipRelationshipName = 'team'; //Isso configura o multitenant por usuarios de equipe

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('name')
                    ->label('Nome')
                    ->required()
                    ->unique(ignoreRecord:true)
                    ->maxLength(255),
                Forms\Components\Select::make('permissions')
                    ->multiple()
                    ->relationship('permissions', 'name')
                    ->preload()
                    ->createOptionForm([
                        Forms\Components\TextInput::make('name')
                        ->label('Nome')
                        ->required()
                        ->maxLength(255),
                    Forms\Components\Select::make('roles')
                        ->multiple()
                        ->relationship('roles', 'name')
                        ->preload()
                        ])
                  ->required()
    
               // Forms\Components\TextInput::make('guard_name')
                 //   ->required()
                   // ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->label('Nome')
                    ->searchable(),
               // Tables\Columns\TextColumn::make('guard_name')
               //     ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Data Criação')
                    ->dateTime(date('d/m/y h:i:s'))
                    ->sortable()
              //     ->toggleable(isToggledHiddenByDefault: true),
              //  Tables\Columns\TextColumn::make('updated_at')
              //    ->dateTime()
              //    ->sortable()
              //    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }
    
    public static function getPages(): array
    {
        return [
            'index' => Pages\ManageRoles::route('/'),
        ];
    }    
}
