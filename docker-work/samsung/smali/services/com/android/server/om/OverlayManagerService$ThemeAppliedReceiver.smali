.class public final Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ThemeAppliedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 2246
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_19

    .line 2249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 2250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2251
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mreadResetSettingsValue(Lcom/android/server/om/OverlayManagerService;)V

    :cond_19
    return-void
.end method
