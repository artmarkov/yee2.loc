<?php

namespace common\models\venue;

use Yii;

/**
 * This is the model class for table "{{%venue_country}}".
 *
 * @property int $id
 * @property string $name
 * @property string $fips
 *
 * @property VenuePlace[] $venuePlaces
 * @property VenueSity[] $venueSities
 */
class VenueCountry extends \yii\db\ActiveRecord
{
    
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%venue_country}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'fips'], 'required'],
            [['name'], 'string', 'max' => 127],
            [['fips'], 'string', 'max' => 2],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('yee/guide', 'ID'),
            'name' => Yii::t('yee/guide', 'Name Country'),
            'fips' => Yii::t('yee/guide', 'Fips'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVenuePlaces()
    {
        return $this->hasMany(VenuePlace::className(), ['country_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getVenueSities()
    {
        return $this->hasMany(VenueSity::className(), ['country_id' => 'id']);
    }

    public static function getVenueCountryList()
    {
        return \yii\helpers\ArrayHelper::map(VenueCountry::find()->where(['not',['id'=>0]])->all(), 'id', 'name');
        
    }
    
}
