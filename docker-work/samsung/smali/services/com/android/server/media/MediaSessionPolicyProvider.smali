.class public abstract Lcom/android/server/media/MediaSessionPolicyProvider;
.super Ljava/lang/Object;
.source "MediaSessionPolicyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionPolicyProvider$SessionPolicy;
    }
.end annotation


# static fields
.field public static final SESSION_POLICY_IGNORE_BUTTON_RECEIVER:I = 0x1

.field public static final SESSION_POLICY_IGNORE_BUTTON_SESSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionPoliciesForApplication(ILjava/lang/String;)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method
