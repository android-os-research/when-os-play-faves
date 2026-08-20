.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallData"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mSessionId:I

.field public mStatusCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2914
    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;-><init>()V

    return-void
.end method
