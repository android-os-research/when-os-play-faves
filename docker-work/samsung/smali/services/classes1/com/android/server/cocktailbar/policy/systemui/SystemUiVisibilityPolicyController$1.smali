.class public Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$1;
.super Ljava/lang/Object;
.source "SystemUiVisibilityPolicyController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->createHandlerThreadLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$1;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    const/4 p0, -0x4

    .line 199
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 p0, 0x0

    .line 200
    invoke-static {p0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    return-void
.end method
