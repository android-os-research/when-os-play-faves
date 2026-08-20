.class public Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;
.super Ljava/lang/Object;
.source "UiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockTaWarningDialogMessage"
.end annotation


# instance fields
.field public mNotFastChargerDialogCommand:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 773
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 783
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 784
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    const/4 v0, 0x0

    .line 786
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    return-void
.end method

.method public setCommand(ILjava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 777
    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->mNotFastChargerDialogCommand:Ljava/lang/Runnable;

    :cond_5
    return-void
.end method
