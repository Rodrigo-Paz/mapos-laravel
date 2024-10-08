<?php

namespace App\Filament\Resources;

use App\Filament\Resources\AuditoriaResource\Pages;
use App\Filament\Resources\AuditoriaResource\RelationManagers;
use App\Models\Auditoria;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Rmsramos\Activitylog\Resources\ActivitylogResource;


class AuditoriaResource extends ActivitylogResource
{

    protected static ?string $tenantOwnershipRelationshipName = 'team'; //Isso configura o multitenant por usuarios de equipe

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                  static::getLogNameColumnCompoment()
                  ->toggleable(isToggledHiddenByDefault: true),
               // static::getEventColumnCompoment(),
                  static::getSubjectTypeColumnCompoment(),
                  static::getCauserNameColumnCompoment(),
                  static::getPropertiesColumnCompoment(),
                  static::getCreatedAtColumnCompoment(),
            ])
            ->filters([
                 static::getDateFilterComponent('create_at'),
               //static::getEventColumnCompoment(),
            ])
            ->actions([
                //Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
               // Tables\Actions\BulkActionGroup::make([
                 //   Tables\Actions\DeleteBulkAction::make(),
               // ]),
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
            'index' => Pages\ListAuditorias::route('/'),
            //'create' => Pages\CreateAuditoria::route('/create'),
            'view' => Pages\ViewAuditoria::route('/{record}'),
            //'edit' => Pages\EditAuditoria::route('/{record}/edit'),
        ];
    }
}
