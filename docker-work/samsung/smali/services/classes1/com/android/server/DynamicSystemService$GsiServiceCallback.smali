.class public Lcom/android/server/DynamicSystemService$GsiServiceCallback;
.super Landroid/gsi/IGsiServiceCallback$Stub;
.source "DynamicSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DynamicSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GsiServiceCallback"
.end annotation


# instance fields
.field public mResult:I

.field public final synthetic this$0:Lcom/android/server/DynamicSystemService;


# direct methods
.method public constructor <init>(Lcom/android/server/DynamicSystemService;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->this$0:Lcom/android/server/DynamicSystemService;

    invoke-direct {p0}, Landroid/gsi/IGsiServiceCallback$Stub;-><init>()V

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    return-void
.end method


# virtual methods
.method public getResult()I
    .registers 1

    .line 73
    iget p0, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    return p0
.end method

.method public declared-synchronized onResult(I)V
    .registers 2

    monitor-enter p0

    .line 68
    :try_start_1
    iput p1, p0, Lcom/android/server/DynamicSystemService$GsiServiceCallback;->mResult:I

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 70
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
