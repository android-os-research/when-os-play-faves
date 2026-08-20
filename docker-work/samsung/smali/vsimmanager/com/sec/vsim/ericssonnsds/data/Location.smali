.class public Lcom/sec/vsim/ericssonnsds/data/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field public Networks3gpp:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3gpp-networks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/Network3gpp;",
            ">;"
        }
    .end annotation
.end field

.field public country:Ljava/lang/String;

.field public indoor:Ljava/lang/Boolean;

.field public latitude:Ljava/lang/Double;

.field public longitude:Ljava/lang/Double;

.field public metadata:Ljava/lang/String;

.field public radius:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
