.class public interface abstract Lcom/skms/android/agent/CcmInterface;
.super Ljava/lang/Object;
.source "CcmInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skms/android/agent/CcmInterface$Stub;,
        Lcom/skms/android/agent/CcmInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.skms.android.agent.CcmInterface"


# virtual methods
.method public abstract handleCcm([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
