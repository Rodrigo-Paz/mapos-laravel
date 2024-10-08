<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ClienteResource\Pages;
use App\Filament\Resources\ClienteResource\RelationManagers;
use App\Models\Cliente;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ClienteResource extends Resource
{
    protected static ?string $model = Cliente::class;
    protected static ?string $navigationIcon = 'heroicon-o-users';
    protected static ?string $modelLabel = 'Cliente/Fornecedores';
    protected static ?string $navigationGroup = 'Cadastros';
    protected static ?int $navigationSort =1;
    protected static ?string $tenantOwnershipRelationshipName = 'team'; //Isso configura o multitenant por usuarios de equipe
    
    
    
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('assas_id')
                ->label('CNPJ/CPF'),
                Forms\Components\TextInput::make('pessoa_fisica')
                ->label('CNPJ/CPF'),
                Forms\Components\TextInput::make('nomeCliente')
                ->label('Nome/Razão Social')
                ->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('sexo')
                ->label('CNPJ/CPF'),
                Forms\Components\TextInput::make('contato')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('telefone')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('celular')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('email')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('senha')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('documento')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('cep')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('rua')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('numero')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('complemento')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('bairro')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('cidade')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('estado')
                //->required()
                ->maxLength(255),
                Forms\Components\TextInput::make('fornecedor')
                ->label('CNPJ/CPF'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('pessoa_fisica')
                    ->label('CNPJ')
                    ->searchable(),
                Tables\Columns\TextColumn::make('nomeCliente')
                    ->label('Nome/Razão Social')
                    ->searchable(),
                Tables\Columns\TextColumn::make('contato')
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
            'index' => Pages\ListClientes::route('/'),
            'create' => Pages\CreateCliente::route('/create'),
            'edit' => Pages\EditCliente::route('/{record}/edit'),
        ];
    }    
}
