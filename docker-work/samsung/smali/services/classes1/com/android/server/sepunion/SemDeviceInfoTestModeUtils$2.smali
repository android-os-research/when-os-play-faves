.class public Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;
.super Landroid/database/ContentObserver;
.source "SemDeviceInfoTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Handler;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 51
    iget-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-static {p1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->-$$Nest$smupdateTestModeFromSetting(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateDeviceInfoTestMode() sCurrentTestMode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->-$$Nest$sfgetsCurrentTestMode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-static {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->-$$Nest$fgetmTestModeChangeHandler(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
