require "spec_helper"

describe Hashed do
  it "return id-keyed hash with objects" do
    Post.hashed.should eq({ 1 => Post.find(1), 2 => Post.find(2) })
  end

  it "return date-keyed hash with objects" do
    Post.hashed(:created_at).should eq({ Post.find(1).created_at => Post.find(1),
                                         Post.find(2).created_at => Post.find(2) })
  end

  it "return id-keyed hash with one value" do
    Post.hashed(by: :id, only: :created_at).should eq({ 1 => Post.find(1).created_at, 2 => Post.find(2).created_at })
  end

end
