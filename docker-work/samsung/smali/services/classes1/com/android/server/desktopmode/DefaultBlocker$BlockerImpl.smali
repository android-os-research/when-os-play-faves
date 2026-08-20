.class public Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
.super Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;
.source "DefaultBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DefaultBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockerImpl"
.end annotation


# instance fields
.field public reasonCode:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/DefaultBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;-><init>()V

    .line 42
    iput p2, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .registers 6

    .line 47
    iget v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_48

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_19

    .line 56
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040448

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 53
    :cond_19
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040437

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object p0

    const v4, 0x1040be9

    .line 54
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_3a
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040440

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :cond_48
    iget-object p0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/DefaultBlocker;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040444

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
