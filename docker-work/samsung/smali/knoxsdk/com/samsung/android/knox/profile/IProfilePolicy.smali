.class public interface abstract Lcom/samsung/android/knox/profile/IProfilePolicy;
.super Ljava/lang/Object;
.source "IProfilePolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/profile/IProfilePolicy$Stub;,
        Lcom/samsung/android/knox/profile/IProfilePolicy$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.profile.IProfilePolicy"


# virtual methods
.method public abstract greylist getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist setRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
