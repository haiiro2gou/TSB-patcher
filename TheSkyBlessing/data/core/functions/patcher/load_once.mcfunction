#> core:patcher/load_once
#
# #load時に一回のみ実行される前処理群
#
# @within function core:patcher/load_once_pre

#> バージョン情報の設定
    data modify storage global Patcher.Version set value "v0.3.1"
    tellraw @a [{"text":"================================","color":"gold"}]
    tellraw @a [{"text":"TSB-Patcher ","color":"green"},{"nbt":"Patcher.Version","storage":"minecraft:global","color":"dark_gray"},{"text":" by はいいろ。","color":"gray"}]
    tellraw @a [{"text":""}]
    tellraw @a [{"text":"Thanks for installation!"}]
    tellraw @a [{"text":"================================","color":"gold"}]

#> リセット必須オブジェクト等の削除
# @private
    #declare objective AttackEvent
    scoreboard objectives remove AttackEvent

#> ベクトル用等のシステム内汎用Entityのエイリアスの登録とsummon
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}
    summon armor_stand 0.0 0.0 0.0 {UUID:[I;0,0,0,1],Marker:1b,Invisible:1b}

#> スコアボード類
    #> 常に値が設定される変数用スコアボード
        scoreboard players set $Difficulty Global 2

    #> AssetManager: Mob -Public
    # @public
        scoreboard objectives add MobHealth dummy {"text":"Mobの体力"}

    #> AssetManager: Teleporter
    # @within function
    #   asset_manager:teleporter/**
        scoreboard objectives add TeleporterLogCD dummy {"text":"他のテレポーターが発見できなかった際のログのクールダウン"}

    #> イベントハンドラ用スコアボード
    # @within function
    #   asset_manager:artifact/triggers/**
    #   player_manager:vanilla_attack/**
    #   core:load_once
    #   core:handler/*
    #   core:tick/**
        scoreboard objectives add AttackEvent custom:damage_dealt {"text":"イベント: 攻撃"}

    #> PlayerManager - Motionチェック用スコアボード
    # @within
    #   function
    #       player_manager:pos_fix_and_calc_diff
    #       api:player_vector/get
    #   predicate lib:is_player_moving
        scoreboard objectives add PosPacketLossDetectAfterTick dummy

#> 各Asset側のロード処理
    function #asset:artifact/load

#> ROMを初期化する
# @private
    #declare function rom:init
    function rom:init