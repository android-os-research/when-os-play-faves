.class public interface abstract Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
.super Ljava/lang/Object;
.source "IOnListResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;,
        Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.telephony.phone.service.internalservice.IOnListResultListener"


# virtual methods
.method public abstract onResult(ZLjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
