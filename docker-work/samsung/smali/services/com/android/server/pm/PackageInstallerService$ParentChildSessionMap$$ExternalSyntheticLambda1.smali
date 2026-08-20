.class public final synthetic Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->$r8$lambda$1xmpqIzXgSgL9JBwqVOa_V0fT_M(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result p0

    return p0
.end method
