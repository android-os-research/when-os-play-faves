.class public Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$1;
.super Ljava/lang/Object;
.source "ParsingPackageUtils.java"

# interfaces
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->parseDefault(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;ILjava/util/List;Z)Landroid/content/pm/parsing/result/ParseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFeature(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .registers 6

    .line 322
    new-instance p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V

    return-object p0
.end method
