.class public interface abstract Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;
.super Ljava/lang/Object;
.source "DnsResolverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckedRemoteRequest"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract execute(Landroid/net/IDnsResolver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
