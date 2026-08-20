.class public Lcom/android/server/am/Pageboost$1;
.super Landroid/content/BroadcastReceiver;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Pageboost;->staticInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 262
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 264
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 265
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "received ACTION_USER_UNLOCKED"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetuser_unlock_done()Z

    move-result p0

    if-nez p0, :cond_34

    .line 267
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "init mGlobalAppLRU"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 268
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->-$$Nest$sfputuser_unlock_done(Z)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x2710

    .line 269
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessage(ILjava/lang/String;IIII)V

    :cond_34
    return-void

    .line 274
    :cond_35
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p1

    if-nez p1, :cond_3c

    return-void

    :cond_3c
    const-string p1, "com.sec.android.launcher.action.RUN_APP"

    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_117

    const-string/jumbo v0, "package"

    if-nez p1, :cond_98

    :try_start_47
    const-string p1, "com.android.server.am.ACTION_PAGEBOOST"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_98

    :cond_50
    const-string p1, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    .line 314
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 315
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "reason"

    .line 316
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-static {p0, p1}, Lcom/android/server/am/Pageboost;->prefetchPackage(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_120

    :cond_68
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 318
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    const-string p1, "android.intent.action.REBOOT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_79

    goto :goto_8d

    :cond_79
    const-string p1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 320
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_120

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 321
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessage(ILjava/lang/String;IIII)V

    goto/16 :goto_120

    :cond_8d
    :goto_8d
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 319
    invoke-static/range {v6 .. v11}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessage(ILjava/lang/String;IIII)V

    goto/16 :goto_120

    .line 279
    :cond_98
    :goto_98
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_b8

    return-void

    :cond_b8
    const-string p0, "apps"

    .line 288
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_d9

    .line 290
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apps "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d9
    const-string p1, " "

    .line 293
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 295
    new-instance p1, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {p1}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    const/4 p2, 0x0

    move v0, p2

    .line 296
    :goto_e6
    array-length v1, p0

    const/4 v2, 0x2

    if-ge v0, v1, :cond_113

    .line 297
    aget-object v1, p0, v0

    if-nez v1, :cond_ef

    goto :goto_113

    :cond_ef
    const-string v3, "/"

    .line 300
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 301
    aget-object v2, v1, p2

    if-nez v2, :cond_fa

    goto :goto_110

    :cond_fa
    const/4 v2, 0x0

    .line 305
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-eqz v3, :cond_10b

    .line 306
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    aget-object v1, v1, p2

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v2

    :cond_10b
    if-eqz v2, :cond_110

    .line 309
    invoke-virtual {p1, v2, p2}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    :cond_110
    :goto_110
    add-int/lit8 v0, v0, 0x1

    goto :goto_e6

    .line 312
    :cond_113
    :goto_113
    invoke-static {v2, p1, p2}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_116} :catch_117

    goto :goto_120

    .line 324
    :catch_117
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed to mReceiver by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_120
    :goto_120
    return-void
.end method
