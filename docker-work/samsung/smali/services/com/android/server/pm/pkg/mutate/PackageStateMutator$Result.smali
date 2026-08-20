.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/mutate/PackageStateMutator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field public static final PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final SPECIFIC_PACKAGE_NULL:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;


# instance fields
.field public final mCommitted:Z

.field public final mPackagesChanged:Z

.field public final mSpecificPackageNull:Z

.field public final mStateChanged:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 125
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 126
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 127
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 128
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 129
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SPECIFIC_PACKAGE_NULL:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .registers 5

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mCommitted:Z

    .line 139
    iput-boolean p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mPackagesChanged:Z

    .line 140
    iput-boolean p3, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mStateChanged:Z

    .line 141
    iput-boolean p4, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mSpecificPackageNull:Z

    return-void
.end method


# virtual methods
.method public isCommitted()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mCommitted:Z

    return p0
.end method

.method public isPackagesChanged()Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mPackagesChanged:Z

    return p0
.end method

.method public isSpecificPackageNull()Z
    .registers 1

    .line 157
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mSpecificPackageNull:Z

    return p0
.end method

.method public isStateChanged()Z
    .registers 1

    .line 153
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mStateChanged:Z

    return p0
.end method
