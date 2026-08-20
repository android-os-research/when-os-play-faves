.class public Lcom/android/server/adb/AdbService$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field public final mAdbUsbUri:Landroid/net/Uri;

.field public final mAdbWifiUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method public static synthetic $r8$lambda$0BNJsES12ohN-hM9rc-IHHCmT0w(Ljava/lang/Object;ZB)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->lambda$onChange$0(Ljava/lang/Object;ZB)V

    return-void
.end method

.method public static synthetic $r8$lambda$_anrLRfFAjD1hzNXDKN7XRbjsWE(Ljava/lang/Object;ZB)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->lambda$onChange$1(Ljava/lang/Object;ZB)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    const/4 p1, 0x0

    .line 205
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "adb_enabled"

    .line 201
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    const-string p1, "adb_wifi_enabled"

    .line 202
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic lambda$onChange$0(Ljava/lang/Object;ZB)V
    .registers 3

    .line 214
    check-cast p0, Lcom/android/server/adb/AdbService;

    invoke-static {p0, p1, p2}, Lcom/android/server/adb/AdbService;->-$$Nest$msetAdbEnabled(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method

.method public static synthetic lambda$onChange$1(Ljava/lang/Object;ZB)V
    .registers 3

    .line 220
    check-cast p0, Lcom/android/server/adb/AdbService;

    invoke-static {p0, p1, p2}, Lcom/android/server/adb/AdbService;->-$$Nest$msetAdbEnabled(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    .line 210
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    .line 211
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p1}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "adb_enabled"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_19

    goto :goto_1a

    :cond_19
    move p3, v0

    .line 213
    :goto_1a
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 214
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 215
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 213
    invoke-static {p2, p0, p3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_66

    .line 216
    :cond_35
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 217
    iget-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p1}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "adb_wifi_enabled"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_4c

    move v0, p3

    .line 219
    :cond_4c
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda1;-><init>()V

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 220
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 221
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    .line 219
    invoke-static {p2, p0, v0, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_66
    :goto_66
    return-void
.end method
