.class public Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;
.super Ljava/lang/Object;
.source "IMediaScannerWapper.java"


# static fields
.field private static mServMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/IMediaScannerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMediaScanner(Landroid/os/IBinder;)I
    .registers 5

    .line 16
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    .line 19
    :cond_b
    invoke-static {p0}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object p0

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 22
    :cond_14
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 23
    sget-object v2, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    .line 24
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public static removeIMediaScanner(I)V
    .registers 3

    .line 36
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 37
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public static requestScanFile(ILjava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 30
    sget-object v0, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/IMediaScannerService;

    .line 31
    invoke-interface {p0, p1, p2, p3}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V

    :cond_1d
    return-void
.end method

.method public static setIMediaScanner()V
    .registers 1

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/samsung/android/securefolder/fwwrapper/IMediaScannerWapper;->mServMap:Ljava/util/HashMap;

    return-void
.end method
