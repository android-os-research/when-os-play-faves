.class public Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper;
.super Landroid/database/ContentObserver;
.source "ContentObserverWrapper.java"


# instance fields
.field contentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 18
    new-instance p1, Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper$1;-><init>(Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper;->contentObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 29
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    return-void
.end method
