.class public interface abstract Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$_Parcel;,
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub;,
        Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCommand"


# virtual methods
.method public abstract internalCommand(Landroid/os/Message;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
