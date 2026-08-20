.class public Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "BleAdvertiserServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/BleAdvertiserServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(Lcom/android/server/desktopmode/State;)V
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$2;->this$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->setCurrentUserId(I)V

    return-void
.end method
