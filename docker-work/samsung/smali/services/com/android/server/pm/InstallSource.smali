.class public final Lcom/android/server/pm/InstallSource;
.super Ljava/lang/Object;
.source "InstallSource.java"


# static fields
.field public static final EMPTY:Lcom/android/server/pm/InstallSource;

.field public static final EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;


# instance fields
.field public final initiatingPackageName:Ljava/lang/String;

.field public final initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

.field public final installerAttributionTag:Ljava/lang/String;

.field public final installerPackageName:Ljava/lang/String;

.field public final isInitiatingPackageUninstalled:Z

.field public final isOrphaned:Z

.field public final originatingPackageName:Ljava/lang/String;

.field public final packageSource:I


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    .line 35
    new-instance v9, Lcom/android/server/pm/InstallSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    sput-object v9, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    .line 39
    new-instance v0, Lcom/android/server/pm/InstallSource;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    sput-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V
    .registers 10

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_12

    if-nez p7, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 150
    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    xor-int/lit8 v0, p6, 0x1

    .line 151
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 153
    :cond_12
    iput-object p1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    .line 157
    iput-boolean p5, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    .line 158
    iput-boolean p6, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    .line 159
    iput-object p7, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 160
    iput p8, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .registers 5

    const/4 v0, 0x0

    .line 94
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 110
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;
    .registers 15

    .line 119
    invoke-static {p0}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {p2}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 118
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public static createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .registers 18

    if-nez p0, :cond_12

    if-nez p1, :cond_12

    if-nez p2, :cond_12

    if-nez p7, :cond_12

    if-nez p6, :cond_12

    if-eqz p5, :cond_f

    .line 135
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    goto :goto_11

    :cond_f
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    :goto_11
    return-object v0

    .line 137
    :cond_12
    new-instance v9, Lcom/android/server/pm/InstallSource;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    return-object v9
.end method

.method public static intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 247
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0
.end method


# virtual methods
.method public removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    const/4 v2, 0x0

    .line 212
    iget-boolean v3, v0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    .line 213
    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 214
    iget-object v5, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 215
    iget-boolean v6, v0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    .line 217
    iget-object v7, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1e

    if-nez v3, :cond_1e

    move v2, v8

    move v15, v2

    goto :goto_1f

    :cond_1e
    move v15, v3

    .line 226
    :goto_1f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_29

    move-object v10, v7

    move v2, v8

    goto :goto_2a

    :cond_29
    move-object v10, v4

    .line 230
    :goto_2a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    move-object v11, v7

    move v14, v8

    goto :goto_36

    :cond_33
    move v8, v2

    move-object v11, v5

    move v14, v6

    :goto_36
    if-nez v8, :cond_39

    return-object v0

    .line 240
    :cond_39
    iget-object v9, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/server/pm/InstallSource;->packageSource:I

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v16, v0

    invoke-static/range {v9 .. v16}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method public setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .registers 11

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-ne p1, v0, :cond_5

    return-object p0

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    iget-boolean v6, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-boolean v7, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public setInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .registers 11

    .line 168
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 171
    :cond_9
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    iget-boolean v6, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-boolean v7, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v8, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 171
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method

.method public setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;
    .registers 11

    .line 181
    iget-boolean v0, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-ne p1, v0, :cond_5

    return-object p0

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    iget-boolean v7, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v8, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move v6, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object p0

    return-object p0
.end method
