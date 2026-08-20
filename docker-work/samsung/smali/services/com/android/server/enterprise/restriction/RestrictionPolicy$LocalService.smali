.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2

    .line 6653
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public isScreenCaptureEnabledEx(IZ)Z
    .registers 3

    .line 6656
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result p0

    return p0
.end method
