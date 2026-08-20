.class public Lcom/android/server/pm/DeletePackageHelper$TempUserState;
.super Ljava/lang/Object;
.source "DeletePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DeletePackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TempUserState"
.end annotation


# instance fields
.field public final enabledState:I

.field public final installed:Z

.field public final lastDisableAppCaller:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput p1, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I

    .line 1039
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 1040
    iput-boolean p3, p0, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLcom/android/server/pm/DeletePackageHelper$TempUserState-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/DeletePackageHelper$TempUserState;-><init>(ILjava/lang/String;Z)V

    return-void
.end method
