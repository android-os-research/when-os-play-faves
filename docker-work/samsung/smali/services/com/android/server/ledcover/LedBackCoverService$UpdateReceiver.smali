.class public Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LedBackCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ledcover/LedBackCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 44
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 46
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_1d

    .line 49
    :cond_1a
    invoke-static {p1}, Lcom/android/server/ledcover/LedBackCoverService;->-$$Nest$smbackgroundWhitelist(Landroid/content/Context;)V

    :cond_1d
    :goto_1d
    return-void
.end method
