.class public final synthetic Lcom/android/commands/bmgr/Bmgr$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

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

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lcom/android/commands/bmgr/Bmgr;->lambda$backupNowAllPackages$0(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
