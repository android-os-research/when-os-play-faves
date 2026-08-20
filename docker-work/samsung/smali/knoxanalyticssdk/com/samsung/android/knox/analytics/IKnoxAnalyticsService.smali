.class public interface abstract Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService;
.super Ljava/lang/Object;
.source "IKnoxAnalyticsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Stub;,
        Lcom/samsung/android/knox/analytics/IKnoxAnalyticsService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.analytics.IKnoxAnalyticsService"


# virtual methods
.method public abstract log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
