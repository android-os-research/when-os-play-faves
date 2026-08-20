.class public final synthetic Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->$r8$lambda$qKaCsO8ZZXT7D0UVcF8QpePqSxY(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
