.class public Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;
.super Ljava/lang/Object;
.source "ResumeOnRebootServiceProvider.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResumeOnRebootServiceCallback"
.end annotation


# instance fields
.field public mResult:Landroid/os/Bundle;

.field public final mResultLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmResult(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetResult(Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;)Landroid/os/Bundle;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->getResult()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final getResult()Landroid/os/Bundle;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    return-object p0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    .line 249
    iget-object p0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResultLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
