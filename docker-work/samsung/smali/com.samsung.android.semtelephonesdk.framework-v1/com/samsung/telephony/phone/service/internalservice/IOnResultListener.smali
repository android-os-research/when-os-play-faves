.class public interface abstract Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
.super Ljava/lang/Object;
.source "IOnResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;,
        Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.telephony.phone.service.internalservice.IOnResultListener"


# virtual methods
.method public abstract onResult(ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
