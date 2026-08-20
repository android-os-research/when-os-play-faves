.class public Lcom/android/server/am/Pageboost$2;
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

    .line 329
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 332
    :try_start_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 336
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 338
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 341
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    .line 342
    invoke-static {p1, p0, v0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V

    goto :goto_44

    :cond_23
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 344
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 347
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    .line 348
    invoke-static {p1, p0, v0}, Lcom/android/server/am/Pageboost;->-$$Nest$smsendMessageWithObject(ILjava/lang/Object;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_44

    .line 352
    :catch_3b
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed to mPackageReceiver by exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void
.end method
