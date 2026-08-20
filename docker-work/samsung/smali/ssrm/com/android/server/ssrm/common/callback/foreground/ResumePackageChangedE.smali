.class public Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;
.super Ljava/lang/Object;
.source "ResumePackageChangedE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# instance fields
.field private mResumedPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;->mResumedPackageName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getResumedPackageName()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;->mResumedPackageName:Ljava/lang/String;

    return-object v0
.end method
