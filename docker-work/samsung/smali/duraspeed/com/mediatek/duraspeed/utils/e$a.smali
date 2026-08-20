.class Lcom/mediatek/duraspeed/utils/e$a;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/duraspeed/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/mediatek/duraspeed/utils/e;


# direct methods
.method private constructor <init>(Lcom/mediatek/duraspeed/utils/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/mediatek/duraspeed/utils/e$a;->c:Lcom/mediatek/duraspeed/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/duraspeed/utils/e;Lcom/mediatek/duraspeed/utils/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mediatek/duraspeed/utils/e$a;-><init>(Lcom/mediatek/duraspeed/utils/e;)V

    return-void
.end method
