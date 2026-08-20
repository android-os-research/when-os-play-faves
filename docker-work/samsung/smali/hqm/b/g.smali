.class public Lb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/g;->a:I

    iput-object p2, p0, Lb/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/g;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lb/d;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lb/g;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
