.class Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper$1;
.super Landroid/database/ContentObserver;
.source "ContentObserverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper;Landroid/os/Handler;)V
    .registers 3

    .line 18
    iput-object p1, p0, Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper$1;->this$0:Lcom/samsung/android/securefolder/fwwrapper/ContentObserverWrapper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    return-void
.end method
