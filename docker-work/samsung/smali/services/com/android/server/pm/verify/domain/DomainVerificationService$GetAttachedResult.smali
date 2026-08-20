.class public Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
.super Ljava/lang/Object;
.source "DomainVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/verify/domain/DomainVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAttachedResult"
.end annotation


# instance fields
.field public mErrorCode:I

.field public mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V
    .registers 3

    .line 2002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2003
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 2004
    iput p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    return-void
.end method

.method public static error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 3
    .param p0    # I
        .annotation build Landroid/content/pm/verify/domain/DomainVerificationManager$Error;
        .end annotation
    .end param

    .line 2009
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    return-object v0
.end method

.method public static success(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 3

    .line 2014
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 1

    .line 2027
    iget p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    return p0
.end method

.method public getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 1

    .line 2019
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    return-object p0
.end method

.method public isError()Z
    .registers 1

    .line 2023
    iget p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
