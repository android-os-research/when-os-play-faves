.class Lcom/android/ims/SecImsManager$WfcDataBaseManager;
.super Ljava/lang/Object;
.source "SecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/SecImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WfcDataBaseManager"
.end annotation


# static fields
.field public static final blacklist COLUMN_VOWIFI_MDN:Ljava/lang/String; = "vowifi_mdn"

.field public static final blacklist COLUMN_WFC_ENABLED_BY_PLATFORM:Ljava/lang/String; = "epdg_support"

.field public static final blacklist COLUMN_WFC_ENABLED_BY_USER:Ljava/lang/String; = "wifi_call_enable"

.field public static final blacklist COLUMN_WFC_MODE:Ljava/lang/String; = "wifi_call_preferred"

.field public static final blacklist COLUMN_WFC_MODE_WHEN_ROAMING:Ljava/lang/String; = "wifi_call_when_roaming"

.field private static final blacklist CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

.field private static final blacklist CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

.field public static final blacklist NOT_INITIALIZED:I = -0x1

.field private static final blacklist SEC_ROAM_WFC_CS_PREF:I = 0x0

.field private static final blacklist SEC_ROAM_WFC_WIFI_ONLY:I = 0x2

.field private static final blacklist SEC_ROAM_WFC_WIFI_PREF:I = 0x1

.field private static final blacklist SEC_WFC_CS_PREF:I = 0x2

.field private static final blacklist SEC_WFC_WIFI_ONLY:I = 0x3

.field private static final blacklist SEC_WFC_WIFI_PREF:I = 0x1

.field private static final blacklist SIM1_SIM2_SUPPORT:I = 0x3

.field private static final blacklist SIM1_SUPPORT:I = 0x1

.field private static final blacklist SIM2_SUPPORT:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SecImsManager-WfcDataBaseManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 648
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 649
    const-string v2, "iwlansettings"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "todos"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "vowifisetting"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    .line 650
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 651
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "vowifisetting2"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    .line 650
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertToGoogleWfcMode(IZ)I
    .registers 5
    .param p0, "mode"    # I
    .param p1, "roaming"    # Z

    .line 749
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_c

    .line 750
    packed-switch p0, :pswitch_data_14

    .line 758
    return v2

    .line 756
    :pswitch_9
    return v0

    .line 754
    :pswitch_a
    return v2

    .line 752
    :pswitch_b
    return v1

    .line 761
    :cond_c
    packed-switch p0, :pswitch_data_1e

    .line 769
    return v1

    .line 767
    :pswitch_10
    return v0

    .line 763
    :pswitch_11
    return v1

    .line 765
    :pswitch_12
    return v2

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static blacklist convertToSecWfcMode(IZ)I
    .registers 4
    .param p0, "mode"    # I
    .param p1, "roaming"    # Z

    .line 724
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_c

    .line 725
    packed-switch p0, :pswitch_data_14

    .line 733
    return v0

    .line 729
    :pswitch_8
    return v0

    .line 727
    :pswitch_9
    const/4 v0, 0x0

    return v0

    .line 731
    :pswitch_b
    return v1

    .line 736
    :cond_c
    packed-switch p0, :pswitch_data_1e

    .line 744
    return v1

    .line 740
    :pswitch_10
    return v0

    .line 738
    :pswitch_11
    return v1

    .line 742
    :pswitch_12
    const/4 v0, 0x3

    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static blacklist getInt(Landroid/content/Context;Ljava/lang/String;II)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "phoneId"    # I

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "dbValue":I
    add-int/lit8 v1, p3, 0x1

    .line 713
    .local v1, "slotId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 714
    return v0
.end method

.method public static blacklist getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 676
    move-object/from16 v1, p1

    const-string v2, "caught:"

    const-string v3, "SecImsManager-WfcDataBaseManager"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v6, v0

    .line 677
    .local v6, "projection":[Ljava/lang/String;
    const-string v10, ""

    .line 678
    .local v10, "dbValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 680
    .local v0, "messagesCursor":Landroid/database/Cursor;
    if-nez p3, :cond_20

    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    goto :goto_30

    .line 684
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v6

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 689
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .local v4, "messagesCursor":Landroid/database/Cursor;
    :goto_30
    if-eqz v4, :cond_86

    :try_start_32
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_86

    .line 690
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 691
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_43} :catch_63
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_43} :catch_47
    .catchall {:try_start_32 .. :try_end_43} :catchall_45

    move-object v10, v0

    .end local v10    # "dbValue":Ljava/lang/String;
    .local v0, "dbValue":Ljava/lang/String;
    goto :goto_89

    .line 702
    .end local v0    # "dbValue":Ljava/lang/String;
    .restart local v10    # "dbValue":Ljava/lang/String;
    :catchall_45
    move-exception v0

    goto :goto_7f

    .line 698
    :catch_47
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 700
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    nop

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    if-eqz v4, :cond_8f

    .line 703
    goto :goto_8b

    .line 695
    :catch_63
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 697
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_48 .. :try_end_7b} :catchall_45

    .line 702
    nop

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    if-eqz v4, :cond_8f

    .line 703
    goto :goto_8b

    .line 702
    :goto_7f
    if-eqz v4, :cond_85

    .line 703
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 704
    const/4 v4, 0x0

    .line 706
    :cond_85
    throw v0

    .line 693
    :cond_86
    move-object/from16 v0, p2

    move-object v10, v0

    .line 702
    :goto_89
    if-eqz v4, :cond_8f

    .line 703
    :goto_8b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 704
    const/4 v4, 0x0

    .line 707
    :cond_8f
    return-object v10
.end method

.method public static blacklist setInt(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "phoneId"    # I

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInt() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsManager-WfcDataBaseManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    add-int/lit8 v0, p3, 0x1

    .line 720
    .local v0, "slotId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 721
    return-void
.end method
