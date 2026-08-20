.class public Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
.super Ljava/lang/Object;
.source "ADPContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ADPContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADPPolicyBuilder"
.end annotation


# instance fields
.field public format:Ljava/lang/String;

.field public hashCode:Ljava/lang/String;

.field public pattern:Ljava/lang/String;

.field public versionType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    const/4 v1, -0x1

    .line 125
    iput v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    .line 127
    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget v2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    goto :goto_16

    .line 154
    :cond_e
    new-instance v3, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    iget-object p0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public flush()V
    .registers 3

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    const/4 v1, -0x1

    .line 161
    iput v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    .line 162
    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-void
.end method

.method public set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-object p0
.end method

.method public set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    return-object p0
.end method

.method public set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .registers 2

    .line 145
    iput p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    return-object p0
.end method
