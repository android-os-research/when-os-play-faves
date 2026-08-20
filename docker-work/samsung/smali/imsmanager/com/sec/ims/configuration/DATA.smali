.class public Lcom/sec/ims/configuration/DATA;
.super Ljava/lang/Object;
.source "DATA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/configuration/DATA$DM_NODE;,
        Lcom/sec/ims/configuration/DATA$DM_FIELD_INDEX;,
        Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;,
        Lcom/sec/ims/configuration/DATA$STORAGE_TYPE;,
        Lcom/sec/ims/configuration/DATA$URI;
    }
.end annotation


# static fields
.field public static DM_FIELD_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    .line 455
    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/4 v2, 0x0

    const-string v3, "Home_network_domain_name"

    invoke-direct {v1, v2, v2, v3}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/4 v3, 0x1

    const-string v4, "P-CSCF_Address"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/4 v4, 0x2

    const-string v5, "Private_user_identity"

    invoke-direct {v1, v4, v2, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/4 v4, 0x3

    const-string v5, "Public_user_identity_List/Public_user_identity_List_1/Public_user_identity"

    invoke-direct {v1, v4, v2, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/4 v5, 0x4

    const-string v6, "LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/Address"

    invoke-direct {v1, v5, v2, v6}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/4 v6, 0x5

    const-string v7, "LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/AddressType"

    invoke-direct {v1, v6, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/4 v7, 0x6

    const-string v8, "AMR_AUDIO_BITRATE"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/4 v7, 0x7

    const-string v8, "AMR_AUDIO_BITRATE_WB"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x8

    const-string v8, "SIP_SESSION_TIMER"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x9

    const-string v8, "SMS_FORMAT"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0xa

    const-string v8, "sms_over_ip_network_indication"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0xb

    const-string v8, "SMS_WRITE_UICC"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0xc

    const-string v8, "Timer_T1"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0xd

    const-string v8, "Timer_T2"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0xe

    const-string v8, "Timer_T4"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0xf

    const-string v8, "Timer_TA"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x10

    const-string v8, "Timer_TB"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x11

    const-string v8, "Timer_TC"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x12

    const-string v8, "Timer_TD"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x13

    const-string v8, "Timer_TE"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x14

    const-string v8, "Timer_TF"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x15

    const-string v8, "Timer_TG"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x16

    const-string v8, "Timer_TH"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x17

    const-string v8, "Timer_TI"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x18

    const-string v8, "Timer_TJ"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x19

    const-string v8, "Timer_TK"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x1a

    const-string v8, "CAP_CACHE_EXP"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x1b

    const-string v8, "CAP_POLL_INTERVAL"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x1c

    const-string v8, "SRC_THROTTLE_PUBLISH"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x1d

    const-string v8, "SUBSCRIBE_MAX_ENTRY"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x1e

    const-string v8, "LVC_BETA_SETTING"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x1f

    const-string v8, "EAB_SETTING"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x20

    const-string v8, "AVAIL_CACHE_EXP"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x21

    const-string v8, "PREF_CSCF_PORT"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 489
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x22

    const-string v8, "FQDN_FOR_PCSCF"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x23

    const-string v8, "POLL_LIST_SUB_EXP"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x24

    const-string v8, "PUBLISH_TIMER"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x25

    const-string v8, "PUBLISH_TIMER_EXTEND"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 493
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x26

    const-string v8, "GZIP_FLAG"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 494
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x27

    const-string v8, "timer_vzw"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 495
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x28

    const-string v8, "t_delay"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 496
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x29

    const-string v8, "IMS_TEST_MODE"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 497
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x2a

    const-string v8, "MIN_SE"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 498
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x2b

    const-string v8, "DCN_NUMBER"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 499
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x2c

    const-string v8, "silent_redial"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 500
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x2d

    const-string v8, "T_LTE_911_FAIL"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 501
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x2e

    const-string v8, "PUBLISH_ERR_RETRY_TIMER"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 502
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x2f

    const-string v8, "SPEAKER_DEFAULT_VIDEO"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 503
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x30

    const-string v8, "RINGING_TIMER"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 504
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x31

    const-string v8, "RINGBACK_TIMER"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 505
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x32

    const-string v8, "RTP_RTCP_TIMER"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 506
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x33

    const-string v8, "DOMAIN_PUI"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 507
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x34

    const-string v8, "URI_MEDIA_RSC_SERV_3WAY_CALL"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 508
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x35

    const-string v8, "PHONE_CONTEXT_URI"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 509
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x36

    const-string v8, "CAP_DISCOVERY"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 510
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x37

    const-string v8, "AMR_WB"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 511
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x38

    const-string v8, "SRC_AMR"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 512
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x39

    const-string v8, "SRC_AMR_WB"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 513
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x3a

    const-string v8, "HD_VOICE"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 514
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x3b

    const-string v8, "UDP_KEEP_ALIVE"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 515
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x3c

    const-string v8, "AUDIO_RTP_PORT_START"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 516
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x3d

    const-string v8, "AUDIO_RTP_PORT_END"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 517
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x3e

    const-string v8, "VIDEO_RTP_PORT_START"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 518
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x3f

    const-string v8, "VIDEO_RTP_PORT_END"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 519
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x40

    const-string v8, "AMR_WB_OCTET_ALIGNED"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 520
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x41

    const-string v8, "AMR_WB_BANDWITH_EFFICIENT"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 521
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x42

    const-string v8, "AMR_OCTET_ALIGNED"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 522
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x43

    const-string v8, "AMR_BANDWITH_EFFICIENT"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 523
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x44

    const-string v8, "H246_VGA"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 524
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x45

    const-string v8, "H246_QVGA"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 525
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x46

    const-string v8, "DTMF_WB"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 526
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x47

    const-string v8, "DTMF_NB"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 527
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x48

    const-string v8, "VOLTE_PREF_SERVICE_STATUS"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 528
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x49

    const-string v8, "SMS_PSI"

    invoke-direct {v1, v7, v2, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 529
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x4a

    const-string v8, "dm_app_id"

    invoke-direct {v1, v7, v4, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 530
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v7, 0x4b

    const-string v8, "dm_user_disp_name"

    invoke-direct {v1, v7, v4, v8}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v4, 0x4b

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 531
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x4c

    const-string v7, "ConRefs/ConRefs_1/ConRef"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 532
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x4d

    const-string v7, "PDP_CONTEXT_PREF"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 533
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x4e

    const-string v7, "ICSI_List/ICSI_List_1/ICSI"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 534
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x4f

    const-string v7, "ICSI_List/ICSI_List_1/ICSI_Resource_Allocation_Mode"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 535
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x50

    const-string v7, "RSC_ALLOC_MODE"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 536
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x51

    const-string v7, "VOICE_DOMAIN_PREF_EUTRAN"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 537
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x52

    const-string v7, "VOICE_DOMAIN_PREF_UTRAN"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 538
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x53

    const-string v7, "IMS_VOICE_TERMINATION"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 539
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x54

    const-string v7, "REG_RETRY_BASE_TIME"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 540
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x55

    const-string v7, "REG_RETRY_MAX_TIME"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 541
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x56

    const-string v7, "PHONE_CONTEXT_PARAM"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 542
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x57

    const-string v7, "PHONE_CONTEXT_PUID"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 543
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x58

    const-string v7, "SS_DOMAIN_SETTING"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 544
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x59

    const-string v7, "SS_CONTROL_PREF"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 545
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x5a

    const-string v7, "DM_POLLING_PERIOD"

    invoke-direct {v1, v4, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 546
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v4, 0x5b

    const-string v7, "ICCID"

    invoke-direct {v1, v4, v3, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v3, 0x5b

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 547
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x5c

    const-string v4, "CONF_FACTORY_URI"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 548
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x5d

    const-string v4, "VOLTE_ENABLED"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 549
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x5e

    const-string v4, "LVC_ENABLED"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 550
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x5f

    const-string v4, "presence"

    invoke-direct {v1, v3, v5, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 551
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x60

    const-string v4, "mmtel"

    invoke-direct {v1, v3, v5, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 552
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x61

    const-string v4, "mmtel-video"

    invoke-direct {v1, v3, v5, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 553
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x62

    const-string v4, "USSD_CONTROL_PREF"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 554
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x63

    const-string v4, "EMERGENCY_CONTROL_PREF"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 555
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x64

    const-string v4, "UT_PDN"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 556
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x65

    const-string v4, "UT_APN_NAME"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 557
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x66

    const-string v4, "VOLTE_DOMAIN_UI_SHOW"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 558
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x67

    const-string v4, "SMS_DOMAIN_UI_SHOW"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 559
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x68

    const-string v4, "UT_APN_SETTING_UI_SHOW"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 560
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x69

    const-string v4, "CONF_FACTORY_URI_SHOW"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 561
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x6a

    const-string v4, "tvolte_hys_timer"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 562
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x6b

    const-string v4, "PIP"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 563
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x6c

    const-string v4, "H264_L_VGA"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 565
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x6d

    const/4 v4, -0x1

    const-string v5, "DEPRECATED"

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 566
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x6e

    const-string v7, "EPDG_ENABLED"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 567
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x6f

    const-string v7, "EHRPD_ENABLED"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 568
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x70

    const-string v7, "SS_CSFB_WITH_IMSERROR"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 569
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x71

    const-string v7, "IMS_ENABLED"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 570
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x72

    const-string v7, "vzw_eab_publish_fail"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 571
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x73

    const-string v7, "VZW_EAB_MENU_SHOW"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 572
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x74

    const-string v7, "IPSEC_ENABLED"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 573
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x75

    const-string v7, "LVC_SUPPORTED"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 575
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x76

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 576
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x77

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 577
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x78

    const-string v7, "RCS"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 578
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x79

    const-string v7, "VOLTE_SUPPORTED"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 580
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x7a

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 581
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x7b

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 582
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x7c

    const-string v7, "root/application/1/services/IR94VideoAuth"

    invoke-direct {v1, v3, v6, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 583
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x7d

    const-string v7, "TWWAN_911_FAIL_TIMER"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 584
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x7e

    const-string v7, "TWLAN_911_SEARCHFAIL_TIMER"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 585
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x7f

    const-string v7, "TWLAN_911_CALLFAIL_TIMER"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 586
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x80

    const-string v7, "VCE_CONFIG"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 587
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x81

    const-string v7, "EVS_PRIMARY"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 588
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x82

    const-string v7, "DEFAULT_BANDWIDTH"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 589
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x83

    const-string v7, "DEFAULT_BIT_RATE"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 590
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x84

    const-string v7, "H263_QCIF"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 591
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x85

    const-string v7, "VWF_ENABLED"

    invoke-direct {v1, v3, v2, v7}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 593
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x86

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 594
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x87

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 595
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x88

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 596
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x89

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 597
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x8a

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 598
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x8b

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 599
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x8c

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 600
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x8d

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 601
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x8e

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 602
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x8f

    const-string v4, "SPR_IMS_PUID1"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 603
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x90

    const-string v4, "SPR_IMS_PUID2"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 604
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x91

    const-string v4, "SPR_IMS_PUID3"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 605
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x92

    const-string v4, "SPR_IMS_PUID4"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 606
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x93

    const-string v4, "SPR_IMS_PUID5"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 607
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x94

    const-string v4, "SPR_IMS_ALPHA_ID"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 608
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x95

    const-string v4, "SPR_IMS_PARAM_IND"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 609
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x96

    const-string v4, "SPR_IMS_TPDA"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 610
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x97

    const-string v4, "SPR_IMS_TPSCA"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 611
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x98

    const-string v4, "SPR_IMS_TPPID"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 612
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x99

    const-string v4, "SPR_IMS_TPDCS"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 613
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x9a

    const-string v4, "SPR_IMS_TPVP"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 614
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x9b

    const-string v4, "SPR_IMS_PCSCF_ADDR_TYPE"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 615
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x9c

    const-string v4, "SPR_IMS_NVISIM"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 616
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x9d

    const-string v4, "VZW_TIMS_TIMER"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 617
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x9e

    const-string v4, "root/vers/version"

    invoke-direct {v1, v3, v6, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 618
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0x9f

    const-string v4, "H265_720P"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 619
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0xa0

    const-string v4, "SPR_VOLTE_UI_DEFAULT"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 620
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0xa1

    const-string v4, "SPR_NET_PREF_HOME"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 621
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0xa2

    const-string v4, "SPR_NET_PREF_ROAMING"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 622
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0xa3

    const-string v4, "VOLTE_USER_SETTING"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 623
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    new-instance v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    const/16 v3, 0xa4

    const-string v4, "composerAuth"

    invoke-direct {v1, v3, v2, v4}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xa4

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 624
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
