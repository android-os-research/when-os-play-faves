.class public Lcom/android/server/wm/WindowState$DrawHandler;
.super Ljava/lang/Object;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawHandler"
.end annotation


# static fields
.field public static final TYPE_BOUND_CHANGE_TRANSACTION:I = 0x1

.field public static final TYPE_UNDEFINED:I = 0x0

.field public static final TYPE_WAIT_TO_HANDLE_RESIZING:I = 0x2


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public mSeqId:I

.field public mType:I

.field public final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;ILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 929
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DrawHandler;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 922
    iput p1, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    .line 930
    iput p2, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    .line 931
    iput-object p3, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method
