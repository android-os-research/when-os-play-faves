.class public interface abstract Lcom/samsung/android/knox/ddar/IDualDARClient;
.super Ljava/lang/Object;
.source "IDualDARClient.java"


# virtual methods
.method public abstract greylist isSupported(I)Z
.end method

.method public abstract greylist onClearResetPasswordToken(IJ)V
.end method

.method public abstract greylist onClientBringup()Z
.end method

.method public abstract greylist onDataLockStateChange(IZ)V
.end method

.method public abstract greylist onDualDARDestroyForUser(I)Z
.end method

.method public abstract greylist onDualDARSetupForUser(I)Z
.end method

.method public abstract greylist onPasswordAuth(I[B)Z
.end method

.method public abstract greylist onPasswordChange(I[B[B)Z
.end method

.method public abstract greylist onResetPasswordWithToken(I[BJ[B)Z
.end method

.method public abstract greylist onSetResetPasswordToken(I[BJ[B)Z
.end method
