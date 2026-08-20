.class public Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;
.super Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;
.source "OnBlobRetrievedListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnBlobRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnBlobRetrievedListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .registers 2

    .line 34
    iput-object p1, p0, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "d5ea5eb3ddbdaa9a986ce6ba70b0804ca3e39b0c"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/16 p0, 0xa

    return p0
.end method

.method public onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
    .registers 6

    .line 39
    iget-object p0, p0, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    if-eqz p0, :cond_c

    .line 40
    new-instance v0, Landroid/net/ipmemorystore/Status;

    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {p0, v0, p2, p3, p4}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V

    :cond_c
    return-void
.end method
