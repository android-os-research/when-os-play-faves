.class public final Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
.super Landroid/os/Handler;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KioskHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V
    .registers 3

    .line 2686
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 2687
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    if-eqz p1, :cond_46

    .line 2694
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "adminuid"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_27

    const/4 v4, 0x2

    if-eq v0, v4, :cond_e

    goto :goto_46

    .line 2705
    :cond_e
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$sfputmProcessing(Z)V

    .line 2706
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 2707
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 2708
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {p0, v0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$m_disableKioskMode(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;I)V

    .line 2709
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$sfputmProcessing(Z)V

    goto :goto_46

    .line 2696
    :cond_27
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$sfputmProcessing(Z)V

    .line 2697
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 2698
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "package"

    .line 2699
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2700
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {p0, v2, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$m_enableKioskMode(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2701
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$sfputmProcessing(Z)V

    :cond_46
    :goto_46
    return-void
.end method
