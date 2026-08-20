.class public final Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
.super Landroid/database/ContentObserver;
.source "AppRestrictionController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConstantsObserver"
.end annotation


# static fields
.field public static final DEFAULT_BG_ABUSIVE_NOTIFICATION_MINIMAL_INTERVAL_MS:J = 0x9a7ec800L

.field public static final DEFAULT_BG_AUTO_RESTRICTED_BUCKET_ON_BG_RESTRICTION:Z = false

.field public static final DEFAULT_BG_AUTO_RESTRICT_ABUSIVE_APPS:Z = true

.field public static final DEFAULT_BG_LONG_FGS_NOTIFICATION_MINIMAL_INTERVAL_MS:J = 0x9a7ec800L

.field public static final DEFAULT_BG_PROMPT_FGS_ON_LONG_RUNNING:Z = true

.field public static final DEFAULT_BG_PROMPT_FGS_WITH_NOTIFICATION_ON_LONG_RUNNING:Z = false

.field public static final KEY_BG_ABUSIVE_NOTIFICATION_MINIMAL_INTERVAL:Ljava/lang/String; = "bg_abusive_notification_minimal_interval"

.field public static final KEY_BG_AUTO_RESTRICTED_BUCKET_ON_BG_RESTRICTION:Ljava/lang/String; = "bg_auto_restricted_bucket_on_bg_restricted"

.field public static final KEY_BG_AUTO_RESTRICT_ABUSIVE_APPS:Ljava/lang/String; = "bg_auto_restrict_abusive_apps"

.field public static final KEY_BG_LONG_FGS_NOTIFICATION_MINIMAL_INTERVAL:Ljava/lang/String; = "bg_long_fgs_notification_minimal_interval"

.field public static final KEY_BG_PROMPT_ABUSIVE_APPS_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_prompt_abusive_apps_to_bg_restricted"

.field public static final KEY_BG_PROMPT_FGS_ON_LONG_RUNNING:Ljava/lang/String; = "bg_prompt_fgs_on_long_running"

.field public static final KEY_BG_PROMPT_FGS_WITH_NOTIFICATION_ON_LONG_RUNNING:Ljava/lang/String; = "bg_prompt_fgs_with_noti_on_long_running"

.field public static final KEY_BG_PROMPT_FGS_WITH_NOTIFICATION_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_prompt_fgs_with_noti_to_bg_restricted"

.field public static final KEY_BG_RESTRICTION_EXEMPTED_PACKAGES:Ljava/lang/String; = "bg_restriction_exempted_packages"


# instance fields
.field public volatile mBgAbusiveNotificationMinIntervalMs:J

.field public volatile mBgAutoRestrictAbusiveApps:Z

.field public volatile mBgAutoRestrictedBucket:Z

.field public volatile mBgLongFgsNotificationMinIntervalMs:J

.field public volatile mBgPromptAbusiveAppsToBgRestricted:Z

.field public volatile mBgPromptFgsOnLongRunning:Z

.field public volatile mBgPromptFgsWithNotiOnLongRunning:Z

.field public volatile mBgPromptFgsWithNotiToBgRestricted:Z

.field public volatile mBgRestrictionExemptedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultBgPromptAbusiveAppToBgRestricted:Z

.field public final mDefaultBgPromptFgsWithNotiToBgRestricted:Z

.field public volatile mRestrictedBucketEnabled:Z

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 1218
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 1219
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1196
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    .line 1220
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110042

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    .line 1222
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110041

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 1378
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BACKGROUND RESTRICTION POLICY SETTINGS:"

    .line 1379
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bg_auto_restricted_bucket_on_bg_restricted"

    .line 1383
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    .line 1384
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1385
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1386
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_auto_restrict_abusive_apps"

    .line 1387
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1389
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_abusive_notification_minimal_interval"

    .line 1391
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1393
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_long_fgs_notification_minimal_interval"

    .line 1395
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1397
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1398
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_prompt_fgs_on_long_running"

    .line 1399
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1401
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_prompt_fgs_with_noti_on_long_running"

    .line 1403
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1405
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_prompt_fgs_with_noti_to_bg_restricted"

    .line 1407
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1409
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1410
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_prompt_abusive_apps_to_bg_restricted"

    .line 1411
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1413
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "bg_restriction_exempted_packages"

    .line 1415
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1417
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isRestrictedBucketEnabled()Z
    .registers 3

    .line 1283
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_restricted_bucket"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public onChange(Z)V
    .registers 2

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateSettings()V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 1228
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_bd

    const-string v1, "bg_"

    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_bd

    :cond_20
    const/4 v1, -0x1

    .line 1232
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_be

    goto/16 :goto_8f

    :sswitch_2a
    const-string v2, "bg_prompt_fgs_with_noti_to_bg_restricted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto/16 :goto_8f

    :cond_34
    const/16 v1, 0x8

    goto/16 :goto_8f

    :sswitch_38
    const-string v2, "bg_prompt_fgs_with_noti_on_long_running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_8f

    :cond_41
    const/4 v1, 0x7

    goto :goto_8f

    :sswitch_43
    const-string v2, "bg_long_fgs_notification_minimal_interval"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_8f

    :cond_4c
    const/4 v1, 0x6

    goto :goto_8f

    :sswitch_4e
    const-string v2, "bg_abusive_notification_minimal_interval"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_8f

    :cond_57
    const/4 v1, 0x5

    goto :goto_8f

    :sswitch_59
    const-string v2, "bg_restriction_exempted_packages"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    goto :goto_8f

    :cond_62
    const/4 v1, 0x4

    goto :goto_8f

    :sswitch_64
    const-string v2, "bg_auto_restricted_bucket_on_bg_restricted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_8f

    :cond_6d
    const/4 v1, 0x3

    goto :goto_8f

    :sswitch_6f
    const-string v2, "bg_prompt_fgs_on_long_running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    goto :goto_8f

    :cond_78
    const/4 v1, 0x2

    goto :goto_8f

    :sswitch_7a
    const-string v2, "bg_auto_restrict_abusive_apps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    goto :goto_8f

    :cond_83
    const/4 v1, 0x1

    goto :goto_8f

    :sswitch_85
    const-string v2, "bg_prompt_abusive_apps_to_bg_restricted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v1, 0x0

    :goto_8f
    packed-switch v1, :pswitch_data_e4

    goto :goto_b6

    .line 1246
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiToBgRestricted()V

    goto :goto_b6

    .line 1249
    :pswitch_97
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiOnLongRunning()V

    goto :goto_b6

    .line 1243
    :pswitch_9b
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgLongFgsNotificationMinimalInterval()V

    goto :goto_b6

    .line 1240
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAbusiveNotificationMinimalInterval()V

    goto :goto_b6

    .line 1258
    :pswitch_a3
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    goto :goto_b6

    .line 1234
    :pswitch_a7
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    goto :goto_b6

    .line 1252
    :pswitch_ab
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsOnLongRunning()V

    goto :goto_b6

    .line 1237
    :pswitch_af
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictAbusiveApps()V

    goto :goto_b6

    .line 1255
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptAbusiveAppToBgRestricted()V

    .line 1261
    :goto_b6
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1, v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monPropertiesChanged(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_bd
    :goto_bd
    return-void

    :sswitch_data_be
    .sparse-switch
        -0x725c6ba9 -> :sswitch_85
        -0x4784dcbb -> :sswitch_7a
        -0x22b4a832 -> :sswitch_6f
        -0x1796dd64 -> :sswitch_64
        -0x965c8df -> :sswitch_59
        0x32f03e37 -> :sswitch_4e
        0x352f0b01 -> :sswitch_43
        0x69968cde -> :sswitch_38
        0x75259a8f -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
    .end packed-switch
.end method

.method public start()V
    .registers 4

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmContext(Lcom/android/server/am/AppRestrictionController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_restricted_bucket"

    .line 1272
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1274
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateSettings()V

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateDeviceConfig()V

    return-void
.end method

.method public final updateBgAbusiveNotificationMinimalInterval()V
    .registers 5

    const-string v0, "activity_manager"

    const-string v1, "bg_abusive_notification_minimal_interval"

    const-wide v2, 0x9a7ec800L

    .line 1319
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    return-void
.end method

.method public final updateBgAutoRestrictAbusiveApps()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "bg_auto_restrict_abusive_apps"

    const/4 v2, 0x1

    .line 1312
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    return-void
.end method

.method public final updateBgAutoRestrictedBucketChanged()V
    .registers 5

    .line 1301
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_auto_restricted_bucket_on_bg_restricted"

    const/4 v3, 0x0

    .line 1302
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 1306
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eq v0, v1, :cond_18

    .line 1307
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    invoke-static {v0, p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mdispatchAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/am/AppRestrictionController;Z)V

    :cond_18
    return-void
.end method

.method public final updateBgLongFgsNotificationMinimalInterval()V
    .registers 5

    const-string v0, "activity_manager"

    const-string v1, "bg_long_fgs_notification_minimal_interval"

    const-wide v2, 0x9a7ec800L

    .line 1326
    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    return-void
.end method

.method public final updateBgPromptAbusiveAppToBgRestricted()V
    .registers 4

    .line 1354
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_prompt_abusive_apps_to_bg_restricted"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    return-void
.end method

.method public final updateBgPromptFgsOnLongRunning()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "bg_prompt_fgs_on_long_running"

    const/4 v2, 0x1

    .line 1347
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    return-void
.end method

.method public final updateBgPromptFgsWithNotiOnLongRunning()V
    .registers 4

    const-string v0, "activity_manager"

    const-string v1, "bg_prompt_fgs_with_noti_on_long_running"

    const/4 v2, 0x0

    .line 1340
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    return-void
.end method

.method public final updateBgPromptFgsWithNotiToBgRestricted()V
    .registers 4

    .line 1333
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_prompt_fgs_with_noti_to_bg_restricted"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    return-void
.end method

.method public final updateBgRestrictionExemptedPackages()V
    .registers 6

    const-string v0, "activity_manager"

    const-string v1, "bg_restriction_exempted_packages"

    const/4 v2, 0x0

    .line 1361
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1366
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    return-void

    :cond_12
    const-string v1, ","

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1370
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1371
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_29

    aget-object v4, v0, v3

    .line 1372
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1374
    :cond_29
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    return-void
.end method

.method public updateDeviceConfig()V
    .registers 1

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictAbusiveApps()V

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAbusiveNotificationMinimalInterval()V

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgLongFgsNotificationMinimalInterval()V

    .line 1293
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiToBgRestricted()V

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiOnLongRunning()V

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsOnLongRunning()V

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptAbusiveAppToBgRestricted()V

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    return-void
.end method

.method public updateSettings()V
    .registers 2

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->isRestrictedBucketEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mRestrictedBucketEnabled:Z

    return-void
.end method
