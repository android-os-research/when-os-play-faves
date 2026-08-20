.class public Lcom/android/server/ReactiveService$1;
.super Landroid/content/BroadcastReceiver;
.source "ReactiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ReactiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ReactiveService;


# direct methods
.method public constructor <init>(Lcom/android/server/ReactiveService;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/android/server/ReactiveService$1;->this$0:Lcom/android/server/ReactiveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string/jumbo p0, "secure_frp_mode"

    const-string p1, "ReactiveService"

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    const-string/jumbo p2, "persist.sys.setupwizard"

    .line 180
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FINISH"

    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 183
    :try_start_20
    invoke-static {}, Lcom/android/server/ReactiveService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_46

    .line 184
    invoke-static {}, Lcom/android/server/ReactiveService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "Secure FRP mode is disabled"

    .line 185
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_20 .. :try_end_40} :catch_41

    goto :goto_46

    :catch_41
    const-string p0, "SECURE_FRP_MODE not found"

    .line 197
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method
