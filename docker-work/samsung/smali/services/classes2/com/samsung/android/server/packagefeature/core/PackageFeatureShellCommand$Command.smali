.class final enum Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
.super Ljava/lang/Enum;
.source "PackageFeatureShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum SET_POLICY_DISABLED_COMMAND:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;


# instance fields
.field public mCommand:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    .line 36
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string v1, "PACKAGE_FEATURE"

    const/4 v2, 0x0

    const-string v3, "-packagefeature"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 37
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string v3, "PACKAGE_FEATURE_OPTION_FORCE_UPDATE"

    const/4 v4, 0x1

    const-string v5, "ForceUpdate"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 38
    new-instance v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string v5, "PACKAGE_FEATURE_OPTION_POLICY_RESET"

    const/4 v6, 0x2

    const-string v7, "PolicyReset"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 39
    new-instance v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string v7, "PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME"

    const/4 v8, 0x3

    const-string v9, "ShowPackageName"

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_SHOW_PACKAGE_NAME:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    .line 40
    new-instance v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const-string v9, "SET_POLICY_DISABLED_COMMAND"

    const/4 v10, 0x4

    const-string v11, "-setPolicyDisabled"

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->SET_POLICY_DISABLED_COMMAND:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 35
    sput-object v9, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .registers 2

    .line 35
    const-class v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .registers 1

    .line 35
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-object v0
.end method
