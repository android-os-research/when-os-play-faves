.class public interface abstract Lcom/sec/ims/IImsDmConfigListener;
.super Ljava/lang/Object;
.source "IImsDmConfigListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsDmConfigListener$Stub;,
        Lcom/sec/ims/IImsDmConfigListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.IImsDmConfigListener"


# virtual methods
.method public abstract onChangeDmValue(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
