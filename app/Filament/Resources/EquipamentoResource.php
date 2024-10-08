<?php

namespace App\Filament\Resources;

use App\Filament\Resources\EquipamentoResource\Pages;
use App\Filament\Resources\EquipamentoResource\RelationManagers;
use App\Models\Equipamento;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class EquipamentoResource extends Resource
{
    protected static ?string $model = Equipamento::class;
    protected static ?string $navigationIcon = 'heroicon-o-pencil-square';
    protected static ?string $navigationGroup = 'Cadastros';
    protected static ?int $navigationSort =5;
    protected static ?string $tenantOwnershipRelationshipName = 'team'; //Isso configura o multitenant por usuarios de equipe

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('equipamento')
                ->required()
                ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
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
            'index' => Pages\ListEquipamentos::route('/'),
            'create' => Pages\CreateEquipamento::route('/create'),
            'edit' => Pages\EditEquipamento::route('/{record}/edit'),
        ];
    }    
}
