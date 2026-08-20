.class Lcom/android/commands/bmgr/Bmgr$InitObserver;
.super Lcom/android/commands/bmgr/Bmgr$Observer;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitObserver"
.end annotation


# instance fields
.field public result:I

.field final synthetic this$0:Lcom/android/commands/bmgr/Bmgr;


# direct methods
.method constructor <init>(Lcom/android/commands/bmgr/Bmgr;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/commands/bmgr/Bmgr;

    .line 627
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr$InitObserver;->this$0:Lcom/android/commands/bmgr/Bmgr;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr$Observer;-><init>(Lcom/android/commands/bmgr/Bmgr$Observer-IA;)V

    .line 628
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/commands/bmgr/Bmgr$InitObserver;->result:I

    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .registers 2
    .param p1, "status"    # I

    .line 632
    invoke-super {p0, p1}, Lcom/android/commands/bmgr/Bmgr$Observer;->backupFinished(I)V

    .line 633
    iput p1, p0, Lcom/android/commands/bmgr/Bmgr$InitObserver;->result:I

    .line 634
    return-void
.end method
