.class public interface abstract Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$_Parcel;,
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub;,
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.continuity.interfaces.IContinuitySyncCloudCallback"


# virtual methods
.method public abstract onCallback(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
