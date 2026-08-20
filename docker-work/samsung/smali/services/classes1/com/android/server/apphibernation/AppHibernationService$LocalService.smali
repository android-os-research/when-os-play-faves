.class public final Lcom/android/server/apphibernation/AppHibernationService$LocalService;
.super Lcom/android/server/apphibernation/AppHibernationManagerInternal;
.source "AppHibernationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalService"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 2

    .line 806
    invoke-direct {p0}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;-><init>()V

    .line 807
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    return-void
.end method


# virtual methods
.method public isHibernatingForUser(Ljava/lang/String;I)Z
    .registers 3

    .line 812
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isHibernatingGlobally(Ljava/lang/String;)Z
    .registers 2

    .line 827
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOatArtifactDeletionEnabled()Z
    .registers 1

    .line 832
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {p0}, Lcom/android/server/apphibernation/AppHibernationService;->-$$Nest$misOatArtifactDeletionEnabled(Lcom/android/server/apphibernation/AppHibernationService;)Z

    move-result p0

    return p0
.end method

.method public setHibernatingForUser(Ljava/lang/String;IZ)V
    .registers 4

    .line 817
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setHibernatingGlobally(Ljava/lang/String;Z)V
    .registers 3

    .line 822
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    return-void
.end method
