require "piece.rb"
require "byebug"
#Describe is block that can take const or string
#Describe and context blocks are essentially the same
#context is usually under describe
#every it is a spec, it blocks are the tests we are running
#expec block --> input: expected output
describe Piece do
    subject(:piece){Piece.new(:white,board,[0,0])} # sets up variable to use (we usually only want one subject)
    let(:board){double(:Banana, {valid_pos?: true})}
    describe '#initialize' do
        #double is a dummy object that we can use and pretend it works

        # sets up variable to use (we usually only want one subject)
        
        context 'with valid arguments' do 
            # piece = Piece.new(:white, [0,0])
            it 'Sets the pieces color correctly' do 
                expect(piece.color).to be(:white)
                # expect(piece.pos).to eq([0,0])
            end
            it 'Sets the pieces position correctly' do
                expect(piece.pos).to eq([0,0])
            end
        end
        context "with invalid arguments" do
            it "raise any error when provided an invalid argument" do
                #{} required for expecting an error
                expect{Piece.new(:blue, board, [0,0])}.to raise_error("Invalid Color")
            end
            it "raise an error when provided invalid position" do
                allow(board).to receive(:valid_pos?).and_return(false)
                expect{Piece.new(:white, board, [9,9])}.to raise_error("Invalid Position")
            end
        end
    end
    describe '#symbol' do 
        it 'raises an error' do
            expect{piece.symbol}.to raise_error(NoMethodError)
        end
    end

    describe '#pos=' do
        before(:each){piece.pos = [1,1]}
        it 'correctly assigns pos' do 
            piece.pos = [2,2]
            expect(piece.pos).to eq([2,2])
        end

        it 'still works' do
            expect(piece.pos).to eq([1,1])
        end

    end



end