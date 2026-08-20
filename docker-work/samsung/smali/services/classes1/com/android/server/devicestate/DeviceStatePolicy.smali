.class public abstract Lcom/android/server/devicestate/DeviceStatePolicy;
.super Ljava/lang/Object;
.source "DeviceStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceStatePolicy$Provider;,
        Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract configureDeviceForState(ILjava/lang/Runnable;)V
.end method

.method public abstract getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;
.end method
