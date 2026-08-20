.class public Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
.super Ljava/lang/Object;
.source "ActiveAdmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/ActiveAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrustAgentInfo"
.end annotation


# instance fields
.field public options:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    return-void
.end method
