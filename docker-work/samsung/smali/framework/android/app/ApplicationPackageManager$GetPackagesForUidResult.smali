.class Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetPackagesForUidResult"
.end annotation


# instance fields
.field private final blacklist mValue:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # [Ljava/lang/String;

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1116
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 1134
    instance-of v0, p1, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1135
    move-object v0, p1

    check-cast v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;

    iget-object v0, v0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1136
    .local v0, "r":[Ljava/lang/String;
    iget-object v2, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    .line 1137
    .local v2, "l":[Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v0, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v1

    :goto_12
    if-nez v2, :cond_16

    move v5, v3

    goto :goto_17

    :cond_16
    move v5, v1

    :goto_17
    if-eq v4, v5, :cond_1a

    .line 1138
    return v1

    .line 1139
    :cond_1a
    if-nez v0, :cond_1d

    .line 1140
    return v3

    .line 1143
    :cond_1d
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1144
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1145
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1147
    .end local v0    # "r":[Ljava/lang/String;
    .end local v2    # "l":[Ljava/lang/String;
    :cond_28
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1126
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1122
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist value()[Ljava/lang/String;
    .registers 2

    .line 1118
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$GetPackagesForUidResult;->mValue:[Ljava/lang/String;

    return-object v0
.end method
